.class public Lcom/samsung/privilege/util/DialogNotification;
.super Ljava/lang/Object;
.source "DialogNotification.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/support/v7/widget/RecyclerView;

.field private static d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private static e:Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

.field private static f:Z

.field private static g:Z

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const-class v0, Lcom/samsung/privilege/util/DialogNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogNotification;->a:Ljava/lang/String;

    .line 72
    sput-boolean v1, Lcom/samsung/privilege/util/DialogNotification;->f:Z

    .line 73
    sput-boolean v1, Lcom/samsung/privilege/util/DialogNotification;->g:Z

    .line 75
    const/16 v0, 0x19

    sput v0, Lcom/samsung/privilege/util/DialogNotification;->k:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 62
    sput p0, Lcom/samsung/privilege/util/DialogNotification;->i:I

    return p0
.end method

.method static synthetic a()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;
    .registers 1

    .prologue
    .line 62
    sput-object p0, Lcom/samsung/privilege/util/DialogNotification;->e:Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 9

    .prologue
    const v5, 0x7f090256

    const/4 v6, 0x1

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_121

    .line 80
    sput-object p0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    .line 82
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 85
    :try_start_12
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_1b

    .line 86
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_166

    .line 91
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0d00ff

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    .line 93
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f040119

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 95
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f1005c8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v1

    .line 97
    if-gt v1, v6, :cond_122

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const v3, 0x7f090254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_75
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    sput-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    .line 105
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 106
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogNotification;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 107
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 109
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$1;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogNotification$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 125
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    new-instance v3, Lcom/samsung/privilege/util/DialogNotification$2;

    invoke-direct {v3}, Lcom/samsung/privilege/util/DialogNotification$2;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 149
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f1005c6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 150
    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$3;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogNotification$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$4;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogNotification$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogNotification;->c(Landroid/content/Context;Landroid/os/Handler;)V

    .line 167
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 168
    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/DialogNotification$5;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 175
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f1005c7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const v2, 0x7f05003e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 181
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 182
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 186
    const-string/jumbo v0, "Notification"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 188
    :cond_121
    return-void

    .line 100
    :cond_122
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "###,###,###"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 88
    :catch_166
    move-exception v0

    goto/16 :goto_1b
.end method

.method static synthetic a(Lcom/bzbs/bean/MessageGCM;)V
    .registers 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/samsung/privilege/util/DialogNotification;->b(Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V
    .registers 2

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogNotification;->b(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method static synthetic b(I)I
    .registers 1

    .prologue
    .line 62
    sput p0, Lcom/samsung/privilege/util/DialogNotification;->j:I

    return p0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogNotification;->c(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private static b(Lcom/bzbs/bean/MessageGCM;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 373
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 374
    :cond_18
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 375
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 381
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 481
    :cond_4f
    :goto_4f
    const-string/jumbo v0, "Click"

    invoke-static {v0, p0}, Lcom/samsung/privilege/util/DialogNotification;->b(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V

    .line 482
    return-void

    .line 387
    :cond_56
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 388
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 390
    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 391
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 397
    :cond_92
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 399
    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 400
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 401
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 402
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 408
    :cond_c3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 411
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 413
    :cond_df
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 414
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 415
    const/4 v3, -0x1

    if-le v2, v3, :cond_144

    .line 416
    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 417
    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 418
    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v4, "f-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_128

    .line 419
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v4, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string/jumbo v3, "ReplyKeyBuzz"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v2, "ReplyIsRequestHelp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 424
    :cond_128
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v4, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    const-string/jumbo v3, "ReplyKeyBuzz"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string/jumbo v2, "ReplyIsRequestHelp"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 430
    :cond_144
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v2, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 433
    :cond_154
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "badge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 434
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 435
    :cond_168
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 436
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v3, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v2, "message"

    iget-object v3, p0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v2, "isNoti"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 441
    :cond_199
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v3, "cat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 442
    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    if-eqz v2, :cond_4f

    .line 443
    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 446
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v2, :cond_1da

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1da

    .line 447
    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    sget-object v3, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    move v0, v1

    .line 456
    :cond_1cd
    :goto_1cd
    if-ne v0, v1, :cond_1dc

    .line 457
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 458
    iget-object v1, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_1da
    move v0, v1

    .line 453
    goto :goto_1cd

    .line 460
    :cond_1dc
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.samsung.privilege.service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string/jumbo v1, "catId"

    iget-object v2, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4f

    .line 466
    :cond_20f
    iget-object v0, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22e

    .line 468
    :try_start_21a
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    if-eqz v0, :cond_4f

    .line 469
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 470
    iget-object v1, p0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Ljava/lang/String;)V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_229} :catch_22b

    goto/16 :goto_4f

    .line 472
    :catch_22b
    move-exception v0

    goto/16 :goto_4f

    .line 475
    :cond_22e
    iget-object v0, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    iget-object v0, p0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 476
    :cond_244
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 478
    :cond_24d
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method

.method private static b(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 485
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "ads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 486
    :cond_17
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_e4

    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 487
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    sget-object v1, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 488
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_6a
    :goto_6a
    return-void

    .line 490
    :cond_6b
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 491
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Bzbs Ads Campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 493
    :cond_ad
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Bzbs Campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 497
    :cond_e4
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 499
    :cond_11c
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "comment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 500
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 501
    const/4 v1, -0x1

    if-le v0, v1, :cond_6a

    .line 502
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v1, "f-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6a

    goto/16 :goto_6a

    .line 510
    :cond_140
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "badge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 511
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Badge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 512
    :cond_167
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 513
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 514
    :cond_190
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 516
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_1f5

    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 517
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    sget-object v2, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    move v0, v1

    .line 526
    :goto_1b9
    if-ne v0, v1, :cond_1f7

    .line 527
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 520
    :cond_1f3
    const/4 v0, 0x0

    goto :goto_1b9

    :cond_1f5
    move v0, v1

    .line 523
    goto :goto_1b9

    .line 529
    :cond_1f7
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 532
    :cond_22f
    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a
.end method

.method static synthetic b()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/privilege/util/DialogNotification;->f:Z

    return v0
.end method

.method static synthetic c(I)I
    .registers 1

    .prologue
    .line 62
    sput p0, Lcom/samsung/privilege/util/DialogNotification;->h:I

    return p0
.end method

.method private static c(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 191
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 192
    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$6;

    invoke-direct {v1, v0}, Lcom/samsung/privilege/util/DialogNotification$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    return-void
.end method

.method static synthetic c()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/privilege/util/DialogNotification;->g:Z

    return v0
.end method

.method static synthetic d()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/privilege/util/DialogNotification;->i:I

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/privilege/util/DialogNotification;->h:I

    return v0
.end method

.method static synthetic f()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/privilege/util/DialogNotification;->j:I

    return v0
.end method

.method static synthetic g()Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->e:Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    return-object v0
.end method

.method static synthetic h()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic i()Landroid/content/Context;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j()Landroid/support/v7/widget/RecyclerView;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/privilege/util/DialogNotification;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
