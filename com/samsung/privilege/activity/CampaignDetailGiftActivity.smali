.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/bzbs/event/NetworkStateReceiver;

.field private C:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

.field private D:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:J

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Z

.field private b:I

.field private c:Lcom/bzbs/bean/Campaign;

.field private d:Lcom/bzbs/bean/NFCTag;

.field private e:Z

.field private f:Lcom/bzbs/bean/DashboardItem;

.field private g:Landroid/os/Handler;

.field private h:Landroid/app/ProgressDialog;

.field private i:I

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/util/Timer;

.field private m:Landroid/support/v7/widget/RecyclerView;

.field private n:Landroid/support/v7/widget/LinearLayoutManager;

.field private o:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

.field private p:Landroid/support/v7/widget/RecyclerView;

.field private q:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private r:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Lcom/facebook/CallbackManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 119
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:I

    .line 142
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->s:I

    .line 143
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    .line 144
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->u:I

    .line 145
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->v:I

    .line 147
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->w:I

    .line 148
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->x:I

    .line 149
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:I

    .line 153
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Ljava/lang/String;

    .line 925
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:Ljava/lang/String;

    .line 2078
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:I

    .line 2276
    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:J

    .line 2564
    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->H:J

    .line 2645
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2646
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->J:Z

    .line 3339
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->K:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_history"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 517
    if-eqz v0, :cond_17

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_16
    return-object v0

    .line 521
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_16

    .line 525
    :catch_24
    move-exception v0

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;I)Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(D)V
    .registers 12

    .prologue
    .line 1055
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1056
    const v1, 0x7f1000eb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1057
    const v2, 0x7f1000ec

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1058
    const v3, 0x7f1000ed

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1059
    const v4, 0x7f1000ee

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1061
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_52

    .line 1062
    const v5, 0x7f0202c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1063
    const v0, 0x7f0202c2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    const v0, 0x7f0202c2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1065
    const v0, 0x7f0202c2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    const v0, 0x7f0202c2

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1103
    :cond_51
    :goto_51
    return-void

    .line 1067
    :cond_52
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_78

    .line 1068
    const v5, 0x7f0202c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    const v0, 0x7f0202c2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1070
    const v0, 0x7f0202c2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    const v0, 0x7f0202c2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1073
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    sub-double v0, p1, v0

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    goto :goto_51

    .line 1074
    :cond_78
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_9e

    .line 1075
    const v5, 0x7f0202c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    const v0, 0x7f0202c2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1077
    const v0, 0x7f0202c2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sub-double v0, p1, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1080
    const v0, 0x7f0202b6

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 1081
    :cond_9e
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_c4

    .line 1082
    const v5, 0x7f0202c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1083
    const v0, 0x7f0202c2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1085
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double v0, p1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1086
    const v0, 0x7f0202b6

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1087
    const v0, 0x7f0202b6

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 1088
    :cond_c4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_eb

    .line 1089
    const v5, 0x7f0202c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1091
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p1, v6

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1092
    const v0, 0x7f0202b6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1093
    const v0, 0x7f0202b6

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    const v0, 0x7f0202b6

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51

    .line 1095
    :cond_eb
    const-wide/16 v6, 0x0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_51

    .line 1097
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1098
    const v0, 0x7f0202b6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1099
    const v0, 0x7f0202b6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1100
    const v0, 0x7f0202b6

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1101
    const v0, 0x7f0202b6

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51
.end method

.method private a(ILcom/bzbs/bean/NFCTag;)V
    .registers 9

    .prologue
    const v5, 0x7f1000c4

    const/4 v4, 0x0

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "campaign_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 901
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 903
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZZ)V

    .line 905
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 906
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 908
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 909
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_6a

    .line 914
    :goto_49
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "getCampaign(after cache)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0, p1, p2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 921
    :goto_54
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 922
    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 923
    return-void

    .line 917
    :cond_5e
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "getCampaign(no cache)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-direct {p0, p1, p2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_54

    .line 910
    :catch_6a
    move-exception v0

    goto :goto_49
.end method

.method private a(ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 15

    .prologue
    .line 927
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 928
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 930
    const-string/jumbo v0, ""

    .line 932
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_116

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?format=json&type=full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v1, :cond_8a

    .line 941
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 942
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    if-eqz v1, :cond_8a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&walletcard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    :cond_8a
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v1, :cond_bd

    .line 951
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&redeem_media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    :cond_bd
    sget-object v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCampaign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 958
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 959
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 960
    invoke-virtual {v1, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 961
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 962
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 963
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v9

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    move-object v1, p0

    move v5, p3

    move v6, p4

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;JLandroid/widget/ProgressBar;ZZILcom/bzbs/bean/NFCTag;)V

    .line 964
    invoke-virtual {v9, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1030
    return-void

    .line 937
    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&format=json&type=full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44
.end method

.method private a(Landroid/widget/ImageView;D)V
    .registers 6

    .prologue
    .line 1106
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_d

    .line 1107
    const v0, 0x7f0202c2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1129
    :cond_c
    :goto_c
    return-void

    .line 1108
    :cond_d
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1d

    .line 1109
    const v0, 0x7f0202bf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1110
    :cond_1d
    const-wide v0, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2d

    .line 1111
    const v0, 0x7f0202be

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1112
    :cond_2d
    const-wide v0, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3d

    .line 1113
    const v0, 0x7f0202bd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1114
    :cond_3d
    const-wide v0, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_4d

    .line 1115
    const v0, 0x7f0202bc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1116
    :cond_4d
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_5a

    .line 1117
    const v0, 0x7f0202bb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1118
    :cond_5a
    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_6a

    .line 1119
    const v0, 0x7f0202ba

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1120
    :cond_6a
    const-wide v0, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_7a

    .line 1121
    const v0, 0x7f0202b9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1122
    :cond_7a
    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_8a

    .line 1123
    const v0, 0x7f0202b8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1124
    :cond_8a
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_9b

    .line 1125
    const v0, 0x7f0202b7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 1126
    :cond_9b
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_c

    .line 1127
    const v0, 0x7f0202b6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c
.end method

.method private a(Lcom/bzbs/bean/Campaign;)V
    .registers 7

    .prologue
    .line 3259
    if-eqz p1, :cond_3e

    .line 3260
    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3262
    :try_start_11
    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 3264
    const-string/jumbo v1, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 3265
    :cond_25
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3266
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8b

    .line 3267
    const/4 v0, 0x1

    aget-object v0, v1, v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_33} :catch_89

    .line 3270
    :try_start_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3271
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_3e} :catch_64

    .line 3312
    :cond_3e
    :goto_3e
    return-void

    .line 3272
    :catch_3f
    move-exception v1

    .line 3273
    :try_start_40
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_63} :catch_89

    goto :goto_3e

    .line 3275
    :catch_64
    move-exception v1

    .line 3276
    :try_start_65
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3e

    .line 3307
    :catch_89
    move-exception v0

    goto :goto_3e

    .line 3279
    :cond_8b
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_9a} :catch_89

    goto :goto_3e

    .line 3283
    :cond_9b
    :try_start_9b
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 3284
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3285
    const-string/jumbo v1, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_bd} :catch_154

    move-result-object v0

    .line 3290
    :goto_be
    :try_start_be
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e4

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 3291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3293
    :cond_e4
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 3294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3303
    :goto_114
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3304
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3305
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->u:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3e

    .line 3296
    :cond_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_152} :catch_89

    move-result-object v0

    goto :goto_114

    .line 3286
    :catch_154
    move-exception v1

    goto/16 :goto_be
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 5

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V
    .registers 4

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZZ)V
    .registers 5

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 296
    const-string/jumbo v0, ""

    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    .line 308
    if-eqz p1, :cond_b8

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 309
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/redeem?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 319
    const-string/jumbo v3, "carrier"

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 321
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showRedeem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 323
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 324
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 325
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 329
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 330
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 386
    :cond_b8
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
    .registers 8

    .prologue
    .line 3176
    const-string/jumbo v0, ""

    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    .line 3179
    :try_start_12
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3180
    if-eqz v0, :cond_3d

    .line 3181
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 3182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_9a

    .line 3189
    :cond_3d
    :goto_3d
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 3192
    sget-object v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goGetPoint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 3194
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 3195
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 3196
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 3197
    invoke-virtual {v1, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 3198
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3199
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 3200
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 3201
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3255
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 3256
    return-void

    .line 3185
    :catch_9a
    move-exception v0

    goto :goto_3d
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V
    .registers 8

    .prologue
    .line 3086
    const-string/jumbo v0, ""

    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    .line 3089
    :try_start_12
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3090
    if-eqz v0, :cond_3d

    .line 3091
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 3092
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3093
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_e2

    .line 3099
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v0, :cond_8a

    .line 3100
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 3101
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3103
    if-eqz v0, :cond_8a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 3104
    const-string/jumbo v1, "walletcard"

    invoke-virtual {p2, v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 3105
    sget-object v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "walletcard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    :cond_8a
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goRedeemCampaignSSLPinning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3112
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 3113
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 3114
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 3115
    invoke-virtual {v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 3116
    invoke-virtual {v2, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 3117
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 3118
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 3119
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3172
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 3173
    return-void

    .line 3095
    :catch_e2
    move-exception v0

    goto/16 :goto_3d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3315
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3317
    const v0, 0x7f040115

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3318
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3320
    const v0, 0x7f10016b

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3323
    const v1, 0x7f1002bb

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3325
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3327
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3335
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 3336
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .registers 6

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2977
    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .registers 13

    .prologue
    .line 1133
    :try_start_0
    new-instance v0, Lcom/bzbs/bean/Campaign;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 1140
    if-nez p2, :cond_37

    .line 1141
    const-string/jumbo v0, "Gift Campaign Details"

    const-string/jumbo v1, "View Campaign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_3a9

    .line 1147
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_338

    .line 1150
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m()V

    .line 1152
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1155
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1157
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    const v0, 0x7f1000f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1161
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->Rating:D

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(D)V

    .line 1165
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v2, v2, Lcom/bzbs/bean/Campaign;->Buzz:I

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1170
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v1, v1, Lcom/bzbs/bean/Campaign;->IsLike:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_339

    .line 1171
    const v1, 0x7f0202a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    :goto_b7
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<font color=\'#3ba9f6\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090371

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v2, v2, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1183
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1185
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1186
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0900e1

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_16a

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0900e0

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    :cond_16a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    const v0, 0x7f1000f4

    :try_start_185
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1195
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CurrentDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1196
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_341

    .line 1197
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0900d3

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900d4

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1e2} :catch_34d

    .line 1215
    :goto_1e2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    if-eqz v0, :cond_359

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_359

    .line 1216
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1219
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1221
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_350

    .line 1222
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    :goto_21f
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1240
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    :goto_256
    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1254
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1256
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1257
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1258
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_367

    .line 1259
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    :goto_28c
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1279
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1282
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1284
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1285
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1286
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_370

    .line 1287
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    :goto_2ca
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1306
    :try_start_2d2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    sget v1, Lcom/bzbs/data/AppSetting;->L:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_379

    .line 1307
    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2ee} :catch_386

    .line 1317
    :goto_2ee
    :try_start_2ee
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n()V

    .line 1318
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o()V
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f4} :catch_389

    .line 1323
    :goto_2f4
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1331
    invoke-direct {p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Z)V

    .line 1333
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p()V

    .line 1335
    if-nez p2, :cond_338

    .line 1336
    const/4 v0, 0x1

    if-ne p3, v0, :cond_32c

    .line 1337
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1338
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32c

    .line 1339
    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_32c
    const/4 v0, 0x1

    if-ne p4, v0, :cond_338

    .line 1344
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    if-nez v0, :cond_338

    .line 1345
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    .line 1350
    :cond_338
    return-void

    .line 1173
    :cond_339
    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b7

    .line 1200
    :cond_341
    const v1, 0x7f0900d5

    :try_start_344
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_34b} :catch_34d

    goto/16 :goto_1e2

    .line 1210
    :catch_34d
    move-exception v0

    goto/16 :goto_1e2

    .line 1224
    :cond_350
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21f

    .line 1246
    :cond_359
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_256

    .line 1261
    :cond_367
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28c

    .line 1289
    :cond_370
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 1309
    :cond_379
    const v0, 0x7f1000fd

    :try_start_37c
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_384
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_384} :catch_386

    goto/16 :goto_2ee

    .line 1311
    :catch_386
    move-exception v0

    goto/16 :goto_2ee

    .line 1319
    :catch_389
    move-exception v0

    .line 1320
    sget-object v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR:setUI_Pager();,setUI_Nav();,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f4

    .line 1143
    :catch_3a9
    move-exception v0

    goto/16 :goto_37
.end method

.method private a(Z)V
    .registers 20

    .prologue
    .line 1353
    const v2, 0x7f1000db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1354
    const v3, 0x7f1000dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1355
    const v4, 0x7f1000dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1356
    const v5, 0x7f1000de

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1357
    const v6, 0x7f1000df

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1359
    const v7, 0x7f1000d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1360
    const v8, 0x7f1000d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1361
    const v9, 0x7f1000d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1362
    const v10, 0x7f1000d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1363
    const v11, 0x7f1000d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1373
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_122

    .line 1374
    const v12, 0x7f0900be

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    :goto_89
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    if-eqz v12, :cond_a9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a9

    .line 1390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    :cond_a9
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_130

    .line 1395
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1396
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1455
    :goto_b8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    if-eqz v12, :cond_ec

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ec

    .line 1456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "N/A"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 1457
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1458
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1462
    :cond_ec
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42f

    .line 1467
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1472
    :goto_117
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_436

    .line 1473
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1477
    :goto_121
    return-void

    .line 1376
    :cond_122
    const v12, 0x7f0900cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_89

    .line 1398
    :cond_130
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Z)Ljava/lang/String;

    move-result-object v12

    .line 1404
    if-eqz v12, :cond_150

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_150

    .line 1405
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1406
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b8

    .line 1409
    :cond_150
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1410
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1412
    const v12, 0x7f0900b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v13, v13, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v14, "5"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_180

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v13, v13, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v14, "6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23c

    .line 1414
    :cond_180
    const v12, 0x7f0900b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1421
    :cond_189
    :goto_189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v13, v13, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v13}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_342

    .line 1422
    new-instance v13, Ljava/text/DecimalFormat;

    const-string/jumbo v14, "###,###,###.##"

    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v14}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1425
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v15, 0x7f0900e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1426
    const-string/jumbo v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f6

    .line 1427
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v15, 0x7f0900e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1430
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v15, v15, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v15, v15, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    if-nez v15, :cond_25a

    .line 1431
    :cond_20d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1416
    :cond_23c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v13, v13, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "get"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_189

    .line 1417
    const v12, 0x7f0900b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_189

    .line 1433
    :cond_25a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v15, v15, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_2ab

    .line 1434
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0900cc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1436
    :cond_2ab
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v16, 0x7f0900cd

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0900ce

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0900cf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1437
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1441
    :cond_342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v13, v13, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_359

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v13, v13, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    if-nez v13, :cond_38d

    .line 1442
    :cond_359
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " 0 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0900e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1444
    :cond_38d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v12, v12, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    const/16 v13, 0x3c

    if-ne v12, v13, :cond_3c0

    .line 1445
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0900cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1447
    :cond_3c0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0900cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v13, v13, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0900ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0900cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1448
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 1469
    :cond_42f
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_117

    .line 1475
    :cond_436
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_121
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    return p1
.end method

.method private b(Z)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x6270

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x6

    .line 1480
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v7, :cond_b3

    .line 1489
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v0, :cond_3f

    .line 1490
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1491
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_c1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_c9

    move-result v0

    if-nez v0, :cond_c1

    .line 1505
    :cond_3f
    :goto_3f
    :try_start_3f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v0, :cond_76

    .line 1506
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1507
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->NextRedeemDatePerCard:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_76

    .line 1508
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v2, v1, Lcom/bzbs/bean/Campaign;->NextRedeemDatePerCard:J

    sub-long/2addr v2, v10

    mul-long/2addr v2, v8

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1509
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1511
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_73} :catch_113

    move-result v0

    if-eqz v0, :cond_d4

    .line 1525
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v0, v12, :cond_82

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_1a1

    .line 1526
    :cond_82
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    if-ne v0, v7, :cond_187

    .line 1528
    :try_start_86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_156

    .line 1529
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 1530
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_13e

    .line 1533
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1534
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_11e

    .line 1535
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_16e

    move-result-object v0

    .line 1657
    :goto_b2
    return-object v0

    .line 1483
    :cond_b3
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1484
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    .line 1496
    :cond_c1
    const v0, 0x7f0903d0

    :try_start_c4
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c9

    move-result-object v0

    goto :goto_b2

    .line 1500
    :catch_c9
    move-exception v0

    .line 1501
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramDashboardItem)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1514
    :cond_d4
    const v0, 0x7f0900a9

    :try_start_d7
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1515
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v4, v3, Lcom/bzbs/bean/Campaign;->NextRedeemDatePerCard:J

    sub-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_111} :catch_113

    move-result-object v0

    goto :goto_b2

    .line 1521
    :catch_113
    move-exception v0

    .line 1522
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.NextRedeemDatePerCard > 0)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1537
    :cond_11e
    const v0, 0x7f090244

    :try_start_121
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    .line 1540
    :cond_126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_135

    .line 1541
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1543
    :cond_135
    const v0, 0x7f090247

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1547
    :cond_13e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_14d

    .line 1548
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1550
    :cond_14d
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1554
    :cond_156
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_165

    .line 1555
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1557
    :cond_165
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_16b} :catch_16e

    move-result-object v0

    goto/16 :goto_b2

    .line 1560
    :catch_16e
    move-exception v0

    .line 1561
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_17e

    .line 1562
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1564
    :cond_17e
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1568
    :cond_187
    if-ne p1, v7, :cond_1a1

    .line 1569
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v6, :cond_198

    .line 1570
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1572
    :cond_198
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1578
    :cond_1a1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b3

    .line 1579
    if-ne p1, v7, :cond_1b3

    .line 1580
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b2

    .line 1585
    :cond_1b3
    if-nez p1, :cond_1f7

    .line 1586
    :try_start_1b5
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-nez v0, :cond_1c5

    .line 1587
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v0, :cond_1c5

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1c3} :catch_209

    if-ne v0, v12, :cond_1f1

    .line 1615
    :cond_1c5
    :goto_1c5
    :try_start_1c5
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e5

    .line 1616
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v2, v1, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    sub-long/2addr v2, v10

    mul-long/2addr v2, v8

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1617
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1619
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1e2} :catch_253

    move-result v0

    if-eqz v0, :cond_213

    .line 1632
    :cond_1e5
    :goto_1e5
    :try_start_1e5
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v0, :cond_266

    .line 1633
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1ef} :catch_25d

    goto/16 :goto_b2

    .line 1590
    :cond_1f1
    :try_start_1f1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_b2

    .line 1594
    :cond_1f7
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v0, :cond_1c5

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v0, v12, :cond_1c5

    .line 1597
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_207} :catch_209

    goto/16 :goto_b2

    .line 1600
    :catch_209
    move-exception v0

    .line 1601
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c5

    .line 1622
    :cond_213
    const v0, 0x7f0900a9

    :try_start_216
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1623
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v4, v3, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    sub-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_250} :catch_253

    move-result-object v0

    goto/16 :goto_b2

    .line 1627
    :catch_253
    move-exception v0

    .line 1628
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e5

    .line 1635
    :catch_25d
    move-exception v0

    .line 1636
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.IsConditionPass == false)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :cond_266
    :try_start_266
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lez v0, :cond_288

    .line 1641
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v1, v1, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v0, v1, :cond_288

    .line 1642
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_27c} :catch_27f

    move-result-object v0

    goto/16 :goto_b2

    .line 1645
    :catch_27f
    move-exception v0

    .line 1646
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_288
    :try_start_288
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->ItemCountSold:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v1, v1, Lcom/bzbs/bean/Campaign;->Quantity:I

    if-lt v0, v1, :cond_2a4

    .line 1651
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_298} :catch_29b

    move-result-object v0

    goto/16 :goto_b2

    .line 1653
    :catch_29b
    move-exception v0

    .line 1654
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_2a4
    const-string/jumbo v0, ""

    goto/16 :goto_b2
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    return v0
.end method

.method private c(Z)V
    .registers 4

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2643
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/facebook/CallbackManager;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    return-object v0
.end method

.method private h()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_history"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 504
    if-eqz v0, :cond_10

    .line 510
    :goto_f
    return-object v0

    .line 507
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_f

    .line 509
    :catch_16
    move-exception v0

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f
.end method

.method private i()V
    .registers 4

    .prologue
    const v2, 0x7f090380

    .line 681
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090381

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dd

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 703
    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    .line 704
    const-string/jumbo v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    .line 705
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dashboard_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    .line 709
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    if-lez v0, :cond_4d

    .line 710
    const-string/jumbo v0, "campaign"

    const-string/jumbo v1, "view"

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    :goto_4c
    return-void

    .line 712
    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 713
    const-string/jumbo v0, "campaign"

    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4c
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private k()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 718
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 719
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 721
    const v1, 0x7f1000c4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 722
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 724
    const v1, 0x7f1000db

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 725
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    const v1, 0x7f1000de

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 728
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 735
    const v1, 0x7f1000e5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    .line 736
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 737
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Landroid/support/v7/widget/LinearLayoutManager;

    .line 738
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 740
    const v1, 0x7f100105

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    .line 741
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 742
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 743
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 745
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    .line 758
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    .line 757
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 791
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 792
    const v1, 0x7f1000f9

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 793
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 808
    const v1, 0x7f100101

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 809
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 824
    const v1, 0x7f100109

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 825
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    if-lez v0, :cond_f2

    .line 840
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_ec

    .line 841
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    .line 842
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    .line 854
    :cond_eb
    :goto_eb
    return-void

    .line 844
    :cond_ec
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-direct {p0, v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_eb

    .line 847
    :cond_f2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 848
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_eb

    .line 851
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_eb
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    return-object v0
.end method

.method private l()V
    .registers 5

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_73

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me/updated_points"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    sget-object v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPoints="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 863
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 864
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 865
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 867
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 868
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 897
    :cond_73
    return-void
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private m()V
    .registers 8

    .prologue
    const v6, 0x7f090287

    .line 1035
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1036
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v2

    .line 1038
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1041
    if-eqz v4, :cond_a5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 1042
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6f

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#3ba9f6\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090289

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    :goto_6e
    return-void

    .line 1047
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#3ba9f6\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090288

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 1050
    :cond_a5
    const v1, 0x7f09028d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    return-object v0
.end method

.method private n()V
    .registers 11

    .prologue
    const v9, 0x7f1000e5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const v6, 0x7f1000e4

    const-wide/16 v2, 0x1388

    .line 1661
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    .line 1663
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_98

    .line 1664
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1672
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1673
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 1674
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->c()V

    .line 1697
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1715
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1749
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    if-nez v0, :cond_76

    .line 1750
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    .line 1751
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1752
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1756
    :cond_76
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1757
    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1758
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "pagerImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1761
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1762
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "rvImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    :cond_98
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_105

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_105

    .line 1766
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e3

    .line 1767
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 1768
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1770
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 1784
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    if-nez v0, :cond_e3

    .line 1785
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    .line 1786
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1787
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1791
    :cond_e3
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1792
    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1793
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "pagerImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1796
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1797
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "rvImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :cond_105
    return-void
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:I

    return v0
.end method

.method private o()V
    .registers 9

    .prologue
    const v7, 0x7f1000e1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 1999
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    .line 2001
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2002
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2004
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_75

    .line 2005
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_75

    move v1, v2

    .line 2006
    :goto_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 2007
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2008
    const v3, 0x7f040025

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2010
    const v0, 0x7f10010a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2011
    if-nez v1, :cond_5d

    .line 2012
    const v4, 0x7f0202ae

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2015
    :cond_5d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2006
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 2018
    :cond_66
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_85

    .line 2019
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2031
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_95

    .line 2032
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    :goto_84
    return-void

    .line 2021
    :cond_85
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:I

    if-ne v0, v6, :cond_8f

    .line 2022
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_75

    .line 2024
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_75

    .line 2034
    :cond_95
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_84
.end method

.method static synthetic p(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private p()V
    .registers 7

    .prologue
    const v5, 0x7f100102

    const/16 v4, 0x8

    .line 2046
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2047
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2050
    :cond_1b
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_campaign_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 2055
    :try_start_4f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2057
    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 2058
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2059
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2064
    :cond_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 2065
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 2066
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2076
    :goto_8b
    return-void

    .line 2057
    :cond_8c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5a

    .line 2068
    :cond_90
    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_9c} :catch_9d

    goto :goto_8b

    .line 2070
    :catch_9d
    move-exception v0

    .line 2071
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b

    .line 2074
    :cond_a6
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b
.end method

.method static synthetic q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic r(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    return v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2648
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v0, :cond_1b

    .line 2649
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    .line 2835
    :goto_1a
    return-void

    .line 2658
    :cond_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2659
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2660
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-virtual {v2}, Lcom/bzbs/bean/Campaign;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2661
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 2666
    :cond_45
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->Delivered:Z

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    if-ne p1, v2, :cond_66

    .line 2687
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    const-string/jumbo v1, "campaign"

    const-string/jumbo v2, "shipping"

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/privilege/util/DialogProfile;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 2691
    :cond_66
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    if-ne v0, v2, :cond_73

    .line 2692
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "if (doRedeeming == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 2694
    :cond_73
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2695
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    .line 2696
    invoke-direct {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 2698
    if-eqz v0, :cond_91

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 2699
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 2701
    :cond_91
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 2703
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_af

    .line 2704
    const-string/jumbo v0, "No internet connection!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Ljava/lang/String;)V

    .line 2705
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2706
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2708
    :cond_af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2710
    if-eqz v0, :cond_488

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_488

    .line 2712
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    .line 2713
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-static {p0, v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V

    .line 2714
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2715
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2716
    :cond_e7
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 2717
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 2718
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 2719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2725
    :goto_128
    :try_start_128
    const-string/jumbo v1, "{campaign_id}"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_13d} :catch_185

    move-result-object v0

    .line 2730
    :goto_13e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2731
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2732
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2734
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2735
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2721
    :cond_15d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_128

    .line 2726
    :catch_185
    move-exception v1

    .line 2727
    sget-object v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|replaceurl|1 := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13e

    .line 2737
    :cond_1a4
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->J:Z

    .line 2739
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2740
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/redeem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2747
    new-instance v3, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2749
    sget-object v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const-string/jumbo v0, "carrier"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2752
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "carrier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    if-eqz p2, :cond_243

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_243

    .line 2755
    const-string/jumbo v0, "address"

    invoke-virtual {v3, v0, p2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2756
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "address="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    :cond_243
    if-eqz p3, :cond_26d

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26d

    .line 2760
    const-string/jumbo v0, "zipcode"

    invoke-virtual {v3, v0, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2761
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zipcode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_26d
    if-eqz p4, :cond_297

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    .line 2765
    const-string/jumbo v0, "shippingFirstName"

    invoke-virtual {v3, v0, p4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2766
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shippingFirstName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    :cond_297
    if-eqz p5, :cond_2c1

    const-string/jumbo v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c1

    .line 2770
    const-string/jumbo v0, "shippingLastName"

    invoke-virtual {v3, v0, p5}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2771
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shippingLastName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    :cond_2c1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_34f

    .line 2775
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v0, :cond_3ba

    .line 2776
    const-string/jumbo v0, "nfc"

    const-string/jumbo v1, "write_back"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2777
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "nfc=write_back"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    :goto_2dc
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v0, :cond_3cd

    .line 2783
    const-string/jumbo v0, "redeem_media"

    const-string/jumbo v1, "nfc_write_back"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2784
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem_media=nfc_write_back"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    :goto_2f3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    if-eqz v0, :cond_34f

    .line 2790
    const-string/jumbo v0, "location_id"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2791
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "location_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v4, v4, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v4, v4, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string/jumbo v0, "info1"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2794
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info1="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v4, v4, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v4, v4, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :cond_34f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    if-eqz v0, :cond_38d

    .line 2799
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    if-eqz v0, :cond_38d

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38d

    .line 2800
    const-string/jumbo v0, "redeem_media"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2801
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "redeem_media="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    :cond_38d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e0

    .line 2810
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(doBuy)url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2779
    :cond_3ba
    const-string/jumbo v0, "nfc"

    const-string/jumbo v1, "read"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2780
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "nfc=read"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2dc

    .line 2786
    :cond_3cd
    const-string/jumbo v0, "redeem_media"

    const-string/jumbo v1, "nfc"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2787
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem_media=nfc"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f3

    .line 2812
    :cond_3e0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41e

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41e

    .line 2813
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_412

    .line 2814
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2816
    :cond_412
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2818
    :cond_41e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43f

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43f

    .line 2819
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2820
    :cond_43f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_460

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_460

    .line 2821
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2822
    :cond_460
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_481

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "surveyapprove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_481

    .line 2823
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2825
    :cond_481
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2829
    :cond_488
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    .line 2830
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->I:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a
.end method

.method public doBack(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2256
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2257
    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 2258
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2259
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2260
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2263
    :cond_22
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/util/ArrayList;

    move-result-object v1

    .line 2264
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 2265
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2267
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2269
    const-string/jumbo v0, "campaign_history"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2270
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2273
    :cond_5d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->finish()V

    .line 2274
    return-void
.end method

.method public doConfirmCondition(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2566
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2567
    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->H:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2568
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->H:J

    sub-long/2addr v2, v4

    .line 2569
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2607
    :goto_1a
    return-void

    .line 2573
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->H:J

    .line 2575
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2577
    const v0, 0x7f040107

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2579
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2581
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 2582
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2587
    :goto_50
    const v0, 0x7f10058a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2588
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2595
    const v0, 0x7f10058c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2596
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2602
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2603
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2604
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2606
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1a

    .line 2584
    :cond_89
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50
.end method

.method public doLike(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2312
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2313
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2314
    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2328
    :goto_19
    return-void

    .line 2318
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2319
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2321
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2322
    if-eqz v0, :cond_42

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2323
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    goto :goto_19

    .line 2325
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "like"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2610
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2611
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2612
    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2628
    :goto_19
    return-void

    .line 2616
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2617
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2619
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    if-eqz v0, :cond_79

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 2621
    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    const-string/jumbo v0, "Gift Campaign Details"

    const-string/jumbo v1, "Click Get Privilege"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2625
    :cond_79
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "redeem"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doReview(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2278
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2279
    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2280
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:J

    sub-long/2addr v2, v4

    .line 2281
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2309
    :goto_1a
    return-void

    .line 2285
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:J

    .line 2299
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2300
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 2302
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2303
    if-eqz v0, :cond_4f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2304
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-static {p0, v0, v1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    goto :goto_1a

    .line 2306
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "BZB Campaign Review"

    const-string/jumbo v3, "review"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doShare(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2467
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2468
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2469
    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2562
    :cond_19
    :goto_19
    return-void

    .line 2473
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2474
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2476
    :cond_2b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_19

    .line 2477
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 2479
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2480
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 2481
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 2482
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    const-string/jumbo v2, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    .line 2483
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 2484
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 2486
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 2556
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 2559
    :cond_6f
    const-string/jumbo v0, "Gift Campaign Details"

    const-string/jumbo v1, "Click Share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public e_()V
    .registers 5

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    return-void
.end method

.method public f()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2331
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2332
    if-eqz v0, :cond_da

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 2333
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2334
    const v1, 0x7f1000e7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2335
    const v2, 0x7f1000e9

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2336
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v3, v3, Lcom/bzbs/bean/Campaign;->IsLike:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_db

    .line 2339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/likes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2340
    sget-object v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(UNLIKE)url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2342
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2343
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2344
    invoke-virtual {v4, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2345
    invoke-virtual {v4, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    .line 2346
    invoke-virtual {v4, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 2347
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2348
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2349
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 2350
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2391
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2462
    :goto_b1
    const-string/jumbo v0, "Gift Campaign Details"

    const-string/jumbo v1, "Click Like"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    :cond_da
    return-void

    .line 2394
    :cond_db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/likes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2395
    sget-object v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(LIKE)url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2400
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2401
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2402
    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2403
    invoke-virtual {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2404
    invoke-virtual {v5, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    .line 2405
    invoke-virtual {v5, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2406
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2407
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2408
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 2409
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2459
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_b1
.end method

.method public f_()V
    .registers 1

    .prologue
    .line 558
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 239
    if-ne p2, v1, :cond_13

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->s:I

    if-ne p1, v0, :cond_13

    .line 293
    :cond_12
    :goto_12
    return-void

    .line 252
    :cond_13
    if-ne p2, v1, :cond_31

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    if-ne p1, v0, :cond_31

    .line 253
    const-string/jumbo v0, "bzbs_return_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 255
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->J:Z

    .line 256
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 258
    :cond_31
    if-ne p2, v1, :cond_37

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->u:I

    if-eq p1, v0, :cond_12

    .line 260
    :cond_37
    if-ne p2, v1, :cond_50

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->v:I

    if-ne p1, v0, :cond_50

    .line 261
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l()V

    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v4, v2, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 263
    :cond_50
    if-ne p2, v1, :cond_71

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->w:I

    if-ne p1, v0, :cond_71

    .line 264
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 266
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 268
    :cond_71
    if-ne p2, v1, :cond_90

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->x:I

    if-ne p1, v0, :cond_90

    .line 269
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 271
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 273
    :cond_90
    if-ne p2, v1, :cond_ad

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:I

    if-ne p1, v0, :cond_ad

    .line 274
    const-string/jumbo v0, "json_redeem"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 276
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 278
    :cond_ad
    if-ne p2, v1, :cond_12

    goto/16 :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 165
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_116

    .line 171
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 173
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setContentView(I)V

    .line 174
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setTheme(I)V

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    .line 178
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Lcom/facebook/CallbackManager;

    .line 181
    :try_start_37
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Lcom/bzbs/event/NetworkStateReceiver;

    .line 182
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_113

    .line 192
    :goto_50
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_79

    .line 202
    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    :cond_79
    const-string/jumbo v0, "Gift Campaign Details"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 208
    :try_start_7f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 209
    const/4 v1, 0x1

    if-ne v0, v1, :cond_da

    .line 210
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_noti_alert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 213
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "Click Campaign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_da
    :goto_da
    return-void

    .line 214
    :cond_db
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "campaign_beacon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 215
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "Click Campaign Beacon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_110} :catch_111

    goto :goto_da

    .line 218
    :catch_111
    move-exception v0

    goto :goto_da

    .line 184
    :catch_113
    move-exception v0

    goto/16 :goto_50

    .line 167
    :catch_116
    move-exception v0

    goto/16 :goto_17
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 453
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/support/v4/view/ViewPager;

    .line 454
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Landroid/widget/LinearLayout;

    .line 455
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 458
    :cond_11
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Ljava/util/Timer;

    .line 460
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/RecyclerView;

    .line 461
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Landroid/support/v7/widget/LinearLayoutManager;

    .line 462
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 464
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView;

    .line 465
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 466
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 467
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 471
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 483
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 485
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 440
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_13

    .line 445
    :goto_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->C:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;

    invoke-static {v0}, Lcom/bzbs/event/ProfileEvents;->b(Lcom/bzbs/event/ProfileEvents$ProfileListener;)V

    .line 447
    return-void

    .line 441
    :catch_13
    move-exception v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 390
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 392
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->C:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    .line 393
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->C:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 395
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;

    .line 396
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;

    invoke-static {v0}, Lcom/bzbs/event/ProfileEvents;->a(Lcom/bzbs/event/ProfileEvents$ProfileListener;)V

    .line 399
    :try_start_1d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 401
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m()V

    .line 402
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "1.getCampaign(resume|gLastTokenBzBs)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_53

    .line 411
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v4, v4}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    .line 413
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void

    .line 405
    :catch_53
    move-exception v0

    goto :goto_41
.end method
