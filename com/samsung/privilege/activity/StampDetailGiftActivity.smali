.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private g:Lcom/bzbs/bean/StampAgency;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Lcom/bzbs/event/NetworkStateReceiver;

.field private k:Landroid/support/v4/view/ViewPager;

.field private l:Z

.field private m:Z

.field private n:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

.field private o:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;

.field private p:Lcom/bzbs/event/StampEvents$StampListener;

.field private q:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

.field private r:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private s:Landroid/support/v7/widget/RecyclerView;

.field private t:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const-class v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "cache_stamp_detail_"

    sput-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f:Ljava/lang/String;

    .line 94
    sput v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    .line 95
    sput v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b:I

    .line 96
    sput v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c:I

    .line 97
    sput v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->i:Ljava/lang/String;

    .line 789
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->l:Z

    .line 853
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m:Z

    .line 1380
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    return-void
.end method

.method private a(IILjava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v7, 0x7f100205

    const v6, 0x7f1001f5

    const v5, 0x7f09017b

    .line 710
    div-int/lit8 v0, p1, 0xa

    .line 711
    rem-int/lit8 v1, p1, 0xa

    .line 712
    if-lez v1, :cond_181

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 719
    :goto_12
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 720
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 721
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b:I

    .line 722
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    .line 724
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    .line 725
    sget v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    mul-int/lit16 v0, v0, 0x1c2

    div-int/lit16 v0, v0, 0x258

    .line 726
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(initialStampProfilePager)gScreenWidth=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(initialStampProfilePager)stamp_back_height=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a:I

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 730
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 733
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    invoke-direct {v0, v2, v1, v3, p3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;-><init>(Landroid/support/v4/app/FragmentManager;ILcom/bzbs/bean/StampAgency;Ljava/util/ArrayList;)V

    .line 734
    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 735
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->c()V

    .line 738
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;I)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 759
    const/4 v0, 0x1

    if-le p2, v0, :cond_11a

    .line 760
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090186

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090177

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    :goto_10d
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;III)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    return-void

    .line 763
    :cond_11a
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090185

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090176

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10d

    :cond_181
    move v1, v0

    goto/16 :goto_12
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 439
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 440
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 539
    :goto_f
    return-void

    .line 444
    :cond_10
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    if-nez v0, :cond_2a

    .line 447
    new-instance v0, Lcom/bzbs/bean/StampAgency;

    invoke-direct {v0}, Lcom/bzbs/bean/StampAgency;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    .line 448
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iput-object p1, v0, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    .line 451
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/stamp/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createStampAndGetStampProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 455
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 456
    const-string/jumbo v3, "imei"

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 457
    sget-object v3, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string/jumbo v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 460
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "os="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v2, "platform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "samsung"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SM-G935F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 463
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "platform="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "samsung"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SM-G935F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 466
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 469
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->V:Z

    .line 470
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 471
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 474
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 475
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_f
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 11

    .prologue
    .line 605
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 607
    const-string/jumbo v0, "cardId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    const-string/jumbo v2, "backgroundUrl"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    const-string/jumbo v3, "expireDate"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 611
    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iput-object v0, v3, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->backgroundUrl:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "agencyId"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "imageUrl"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->imageUrl:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "imageUrl"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "name"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "description"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/StampAgency;->description:Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "maxQuantity"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    .line 620
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "currentQuantity"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    .line 621
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    const-string/jumbo v2, "pricePerStamp"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/bean/StampAgency;->pricePerStamp:D

    .line 627
    const-string/jumbo v0, "Stamp Profile"

    const-string/jumbo v2, "View Stamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v6, v6, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v6, v6, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v2, v3, v6}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 629
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j()V

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b1} :catch_1e0

    .line 635
    :try_start_b1
    const-string/jumbo v0, "campaigns"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/bean/StampCampaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 636
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "campaigns->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "campaigns"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_e0} :catch_1d8

    .line 641
    :goto_e0
    :try_start_e0
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget v1, v1, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget v2, v2, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(IILjava/util/ArrayList;)V

    .line 643
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd MMM yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x6270

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 644
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09017a

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    if-eqz v0, :cond_213

    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_213

    .line 647
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget v0, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget v1, v1, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    if-lt v0, v1, :cond_1e2

    .line 648
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :goto_182
    const/4 v0, 0x1

    if-ne p2, v0, :cond_252

    .line 672
    const v0, 0x7f1001fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_191} :catch_1e0

    .line 681
    :goto_191
    :try_start_191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 682
    const-string/jumbo v1, "otherStamps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/bean/StampAgency;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 684
    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->t:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    .line 685
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->s:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->t:Lcom/samsung/privilege/activity/StampDetailGiftActivity$AgencyListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 687
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25f

    .line 688
    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1cb} :catch_279

    .line 698
    :goto_1cb
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$12;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    return-void

    .line 637
    :catch_1d8
    move-exception v0

    .line 638
    :try_start_1d9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_e0

    .line 676
    :catch_1e0
    move-exception v0

    goto :goto_191

    .line 653
    :cond_1e2
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_182

    .line 659
    :cond_213
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 660
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$11;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_182

    .line 674
    :cond_252
    const v0, 0x7f1001fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_25d} :catch_1e0

    goto/16 :goto_191

    .line 691
    :cond_25f
    const v0, 0x7f10020b

    :try_start_262
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_277} :catch_279

    goto/16 :goto_1cb

    .line 694
    :catch_279
    move-exception v0

    goto/16 :goto_1cb
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Z)Z
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Z)Z
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->o()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 8

    .prologue
    const v6, 0x7f0900e9

    .line 255
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v2

    .line 258
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 260
    if-eqz v4, :cond_a5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 261
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6f

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#ffffff\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_6e
    return-void

    .line 264
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#ffffff\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 267
    :cond_a5
    const v1, 0x7f0900ed

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->p()V

    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 272
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 273
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 275
    const v1, 0x7f10020d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->s:Landroid/support/v7/widget/RecyclerView;

    .line 276
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->s:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 279
    packed-switch v1, :pswitch_data_c0

    .line 293
    iput v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    .line 296
    :goto_30
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->r:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 297
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->s:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->r:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 299
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    if-eqz v1, :cond_a5

    .line 300
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j()V

    .line 302
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 305
    invoke-direct {p0, v1, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;Z)V

    .line 307
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m()V

    .line 321
    :cond_88
    :goto_88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 322
    return-void

    .line 281
    :pswitch_8d
    iput v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    goto :goto_30

    .line 284
    :pswitch_90
    iput v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    goto :goto_30

    .line 287
    :pswitch_93
    iput v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    goto :goto_30

    .line 290
    :pswitch_96
    iput v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->u:I

    goto :goto_30

    .line 309
    :cond_99
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m()V

    goto :goto_88

    .line 312
    :cond_9d
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_88

    .line 315
    :cond_a5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_88

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 317
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_88

    .line 279
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
    .end packed-switch
.end method

.method private j()V
    .registers 8

    .prologue
    const v6, 0x7f1001fb

    .line 325
    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 328
    const v1, 0x7f090179

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    const-string/jumbo v2, "@Money"

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-wide v4, v3, Lcom/bzbs/bean/StampAgency;->pricePerStamp:D

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    const v0, 0x7f1001fa

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$3;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 351
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v0, 0x7f1001f4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 352
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 355
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$4;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 363
    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$5;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 370
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$7;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    if-eqz v0, :cond_23

    .line 425
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 426
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m()V

    .line 436
    :cond_1a
    :goto_1a
    return-void

    .line 428
    :cond_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 431
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 433
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private m()V
    .registers 5

    .prologue
    .line 542
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 600
    :goto_f
    return-void

    .line 547
    :cond_10
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/stamp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/profile?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    sget-object v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStampProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 553
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->V:Z

    .line 554
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 557
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 558
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_f
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 791
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->l:Z

    if-ne v0, v1, :cond_e

    .line 792
    sget-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "if (gettingStampPaycode == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_d
    return-void

    .line 796
    :cond_e
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->l:Z

    .line 798
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 799
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->i()Ljava/lang/String;

    move-result-object v0

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/wallet/paycode?cardId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&mac_address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    sget-object v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStampPaycode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 805
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->V:Z

    .line 806
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 809
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 810
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto :goto_d
.end method

.method private o()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 855
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m:Z

    if-ne v0, v1, :cond_e

    .line 856
    sget-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "if (gettingStampRenew == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_d
    return-void

    .line 860
    :cond_e
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m:Z

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/stamp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/renew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    sget-object v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStampRenew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 867
    const-string/jumbo v2, "cardId"

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 868
    sget-object v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cardId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    iget-object v4, v4, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 871
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->V:Z

    .line 872
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 873
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 875
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 876
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 877
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_d
.end method

.method private p()V
    .registers 2

    .prologue
    .line 1176
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1177
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->finish()V

    .line 1178
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 1182
    :goto_a
    return-void

    .line 1179
    :catch_b
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->finish()V

    .line 252
    return-void
.end method

.method public f_()V
    .registers 5

    .prologue
    .line 224
    sget-object v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void networkAvailable() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$2;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method

.method public g_()V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_c1

    .line 113
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 115
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->setContentView(I)V

    .line 116
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->setTheme(I)V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    .line 121
    :try_start_33
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j:Lcom/bzbs/event/NetworkStateReceiver;

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4c} :catch_bf

    .line 128
    :goto_4c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stamp_agency"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/StampAgency;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g:Lcom/bzbs/bean/StampAgency;

    .line 130
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->i()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->i:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_b8

    .line 143
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    :cond_b8
    const-string/jumbo v0, "Stamp Profile"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 147
    return-void

    .line 124
    :catch_bf
    move-exception v0

    goto :goto_4c

    .line 109
    :catch_c1
    move-exception v0

    goto/16 :goto_19
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 220
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 206
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->j:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_1d

    .line 211
    :goto_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->n:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->o:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;

    invoke-static {v0}, Lcom/bzbs/event/ProfileEvents;->b(Lcom/bzbs/event/ProfileEvents$ProfileListener;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->p:Lcom/bzbs/event/StampEvents$StampListener;

    invoke-static {v0}, Lcom/bzbs/event/StampEvents;->b(Lcom/bzbs/event/StampEvents$StampListener;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->q:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->b(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 215
    return-void

    .line 207
    :catch_1d
    move-exception v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h()V

    .line 155
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->n:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    .line 156
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->n:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 158
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->o:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;

    .line 159
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->o:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ProfileListener;

    invoke-static {v0}, Lcom/bzbs/event/ProfileEvents;->a(Lcom/bzbs/event/ProfileEvents$ProfileListener;)V

    .line 161
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->p:Lcom/bzbs/event/StampEvents$StampListener;

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->p:Lcom/bzbs/event/StampEvents$StampListener;

    invoke-static {v0}, Lcom/bzbs/event/StampEvents;->a(Lcom/bzbs/event/StampEvents$StampListener;)V

    .line 164
    new-instance v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->q:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->q:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 168
    :try_start_38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 170
    invoke-direct {p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4b} :catch_5d

    .line 178
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v2, v2}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void

    .line 174
    :catch_5d
    move-exception v0

    goto :goto_4b
.end method
