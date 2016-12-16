.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private A:Lcom/bzbs/event/NetworkStateReceiver;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:J

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private b:I

.field private c:Lcom/bzbs/bean/Campaign;

.field private d:Lcom/bzbs/bean/NFCTag;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Landroid/app/ProgressDialog;

.field private h:I

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Landroid/widget/LinearLayout;

.field private k:Ljava/util/Timer;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Landroid/support/v7/widget/LinearLayoutManager;

.field private n:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private q:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/facebook/CallbackManager;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
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

    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 116
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:I

    .line 138
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:I

    .line 139
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->s:I

    .line 140
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    .line 141
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->u:I

    .line 143
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->v:I

    .line 144
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->w:I

    .line 145
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->x:I

    .line 149
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Ljava/lang/String;

    .line 890
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Ljava/lang/String;

    .line 2001
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->C:I

    .line 2199
    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:J

    .line 2487
    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:J

    .line 2568
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2569
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:Z

    .line 3112
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->H:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Ljava/lang/String;

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
    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_history"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 507
    if-eqz v0, :cond_17

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_16
    return-object v0

    .line 511
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_16

    .line 515
    :catch_24
    move-exception v0

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;I)Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(D)V
    .registers 12

    .prologue
    .line 1004
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1005
    const v1, 0x7f1000e9

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1006
    const v2, 0x7f1000ea

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1007
    const v3, 0x7f1000eb

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1008
    const v4, 0x7f1000ec

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1010
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_52

    .line 1011
    const v5, 0x7f0202bd

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1012
    const v0, 0x7f0202bd

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1013
    const v0, 0x7f0202bd

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    const v0, 0x7f0202bd

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1015
    const v0, 0x7f0202bd

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1052
    :cond_51
    :goto_51
    return-void

    .line 1016
    :cond_52
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_78

    .line 1017
    const v5, 0x7f0202bd

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    const v0, 0x7f0202bd

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    const v0, 0x7f0202bd

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1020
    const v0, 0x7f0202bd

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1022
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    sub-double v0, p1, v0

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    goto :goto_51

    .line 1023
    :cond_78
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_9e

    .line 1024
    const v5, 0x7f0202bd

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1025
    const v0, 0x7f0202bd

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1026
    const v0, 0x7f0202bd

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1028
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sub-double v0, p1, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1029
    const v0, 0x7f0202b1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 1030
    :cond_9e
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_c4

    .line 1031
    const v5, 0x7f0202bd

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1032
    const v0, 0x7f0202bd

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double v0, p1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1035
    const v0, 0x7f0202b1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1036
    const v0, 0x7f0202b1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 1037
    :cond_c4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_eb

    .line 1038
    const v5, 0x7f0202bd

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p1, v6

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1041
    const v0, 0x7f0202b1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    const v0, 0x7f0202b1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1043
    const v0, 0x7f0202b1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51

    .line 1044
    :cond_eb
    const-wide/16 v6, 0x0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_51

    .line 1046
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Landroid/widget/ImageView;D)V

    .line 1047
    const v0, 0x7f0202b1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1048
    const v0, 0x7f0202b1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1049
    const v0, 0x7f0202b1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1050
    const v0, 0x7f0202b1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51
.end method

.method private a(ILcom/bzbs/bean/NFCTag;)V
    .registers 9

    .prologue
    const v5, 0x7f1000c2

    const/4 v4, 0x0

    .line 865
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

    .line 866
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 868
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZZ)V

    .line 870
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 871
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 873
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 874
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_6a

    .line 879
    :goto_49
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "getCampaign(after cache)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, p1, p2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 886
    :goto_54
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 887
    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 888
    return-void

    .line 882
    :cond_5e
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "getCampaign(no cache)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, p1, p2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_54

    .line 875
    :catch_6a
    move-exception v0

    goto :goto_49
.end method

.method private a(ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 15

    .prologue
    .line 892
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 893
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 895
    const-string/jumbo v0, ""

    .line 897
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_9d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 900
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

    .line 905
    :goto_44
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

    .line 906
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 907
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 908
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 909
    invoke-virtual {v1, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 911
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 912
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v9

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    move-object v1, p0

    move v5, p3

    move v6, p4

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;JLandroid/widget/ProgressBar;ZZILcom/bzbs/bean/NFCTag;)V

    .line 913
    invoke-virtual {v9, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 979
    return-void

    .line 902
    :cond_9d
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

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

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
    .line 1055
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_d

    .line 1056
    const v0, 0x7f0202bd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    :cond_c
    :goto_c
    return-void

    .line 1057
    :cond_d
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1d

    .line 1058
    const v0, 0x7f0202ba

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1059
    :cond_1d
    const-wide v0, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2d

    .line 1060
    const v0, 0x7f0202b9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1061
    :cond_2d
    const-wide v0, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3d

    .line 1062
    const v0, 0x7f0202b8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1063
    :cond_3d
    const-wide v0, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_4d

    .line 1064
    const v0, 0x7f0202b7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1065
    :cond_4d
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_5a

    .line 1066
    const v0, 0x7f0202b6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1067
    :cond_5a
    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_6a

    .line 1068
    const v0, 0x7f0202b5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1069
    :cond_6a
    const-wide v0, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_7a

    .line 1070
    const v0, 0x7f0202b4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1071
    :cond_7a
    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_8a

    .line 1072
    const v0, 0x7f0202b3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1073
    :cond_8a
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_9b

    .line 1074
    const v0, 0x7f0202b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 1075
    :cond_9b
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_c

    .line 1076
    const v0, 0x7f0202b1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c
.end method

.method private a(Lcom/bzbs/bean/Campaign;)V
    .registers 7

    .prologue
    .line 3036
    if-eqz p1, :cond_3e

    .line 3037
    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3039
    :try_start_11
    iget-object v0, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 3041
    const-string/jumbo v1, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 3042
    :cond_25
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3043
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8b

    .line 3044
    const/4 v0, 0x1

    aget-object v0, v1, v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_33} :catch_89

    .line 3047
    :try_start_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3048
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_3e} :catch_64

    .line 3085
    :cond_3e
    :goto_3e
    return-void

    .line 3049
    :catch_3f
    move-exception v1

    .line 3050
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

    .line 3052
    :catch_64
    move-exception v1

    .line 3053
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

    .line 3080
    :catch_89
    move-exception v0

    goto :goto_3e

    .line 3056
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

    .line 3060
    :cond_9b
    :try_start_9b
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 3061
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3062
    const-string/jumbo v1, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_bd} :catch_154

    move-result-object v0

    .line 3067
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

    .line 3068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3070
    :cond_e4
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 3071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3076
    :goto_114
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3077
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3078
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3e

    .line 3073
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

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;)Ljava/lang/String;

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

    .line 3063
    :catch_154
    move-exception v1

    goto/16 :goto_be
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 5

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V
    .registers 4

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZZ)V
    .registers 5

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 292
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    .line 304
    if-eqz p1, :cond_b8

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 305
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 311
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

    .line 313
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 315
    const-string/jumbo v3, "carrier"

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 317
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

    .line 318
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 319
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 320
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 321
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 325
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 382
    :cond_b8
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
    .registers 8

    .prologue
    .line 2953
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    .line 2956
    :try_start_12
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2957
    if-eqz v0, :cond_3d

    .line 2958
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 2959
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2960
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_9a

    .line 2966
    :cond_3d
    :goto_3d
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2969
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

    .line 2970
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2971
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2972
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2973
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2974
    invoke-virtual {v1, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2975
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2976
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2977
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 2978
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3032
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 3033
    return-void

    .line 2962
    :catch_9a
    move-exception v0

    goto :goto_3d
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V
    .registers 8

    .prologue
    .line 2874
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    .line 2877
    :try_start_12
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2878
    if-eqz v0, :cond_3d

    .line 2879
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 2880
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2881
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_95

    .line 2887
    :cond_3d
    :goto_3d
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRedeem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2889
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2890
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2891
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2892
    invoke-virtual {v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2893
    invoke-virtual {v2, p2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2894
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2895
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    .line 2896
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2949
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2950
    return-void

    .line 2883
    :catch_95
    move-exception v0

    goto :goto_3d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3088
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3090
    const v0, 0x7f040112

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3091
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3093
    const v0, 0x7f100169

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3096
    const v1, 0x7f1002a0

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3098
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3100
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3108
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 3109
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .registers 6

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2837
    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .registers 13

    .prologue
    .line 1082
    :try_start_0
    new-instance v0, Lcom/bzbs/bean/Campaign;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 1089
    if-nez p2, :cond_37

    .line 1090
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39b

    .line 1096
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_32a

    .line 1099
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n()V

    .line 1101
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1104
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1106
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1110
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->Rating:D

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(D)V

    .line 1114
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1116
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

    .line 1118
    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1119
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v1, v1, Lcom/bzbs/bean/Campaign;->IsLike:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32b

    .line 1120
    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    :goto_b7
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<font color=\'#3ba9f6\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090355

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

    .line 1129
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    const v0, 0x7f1000f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1134
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1136
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

    .line 1137
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_16a

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0900df

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
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

    .line 1143
    const v0, 0x7f1000f2

    :try_start_185
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1144
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

    .line 1145
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_333

    .line 1146
    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0900d2

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

    const v2, 0x7f0900d3

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1e2} :catch_33f

    .line 1164
    :goto_1e2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    if-eqz v0, :cond_34b

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34b

    .line 1165
    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1168
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1170
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_342

    .line 1171
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    :goto_21f
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1189
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    :goto_256
    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1203
    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1205
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1206
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1207
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_359

    .line 1208
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    :goto_28c
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1228
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1231
    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1233
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1234
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1235
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    const-string/jumbo v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_362

    .line 1236
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :goto_2ca
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1255
    :try_start_2d2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    sget v1, Lcom/bzbs/data/AppSetting;->L:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36b

    .line 1256
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2ee} :catch_378

    .line 1266
    :goto_2ee
    :try_start_2ee
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o()V

    .line 1267
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p()V
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f4} :catch_37b

    .line 1272
    :goto_2f4
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1280
    invoke-direct {p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Z)V

    .line 1282
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q()V

    .line 1284
    if-nez p2, :cond_32a

    .line 1285
    const/4 v0, 0x1

    if-ne p3, v0, :cond_31e

    .line 1286
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1287
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31e

    .line 1288
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()V

    .line 1292
    :cond_31e
    const/4 v0, 0x1

    if-ne p4, v0, :cond_32a

    .line 1293
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    if-nez v0, :cond_32a

    .line 1294
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    .line 1299
    :cond_32a
    return-void

    .line 1122
    :cond_32b
    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b7

    .line 1149
    :cond_333
    const v1, 0x7f0900d4

    :try_start_336
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_33d} :catch_33f

    goto/16 :goto_1e2

    .line 1159
    :catch_33f
    move-exception v0

    goto/16 :goto_1e2

    .line 1173
    :cond_342
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21f

    .line 1195
    :cond_34b
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_256

    .line 1210
    :cond_359
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28c

    .line 1238
    :cond_362
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 1258
    :cond_36b
    const v0, 0x7f1000fb

    :try_start_36e
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_376
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_376} :catch_378

    goto/16 :goto_2ee

    .line 1260
    :catch_378
    move-exception v0

    goto/16 :goto_2ee

    .line 1268
    :catch_37b
    move-exception v0

    .line 1269
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

    .line 1092
    :catch_39b
    move-exception v0

    goto/16 :goto_37
.end method

.method private a(Z)V
    .registers 20

    .prologue
    .line 1302
    const v2, 0x7f1000d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1303
    const v3, 0x7f1000da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1304
    const v4, 0x7f1000db

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1305
    const v5, 0x7f1000dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1306
    const v6, 0x7f1000dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1308
    const v7, 0x7f1000d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1309
    const v8, 0x7f1000d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1310
    const v9, 0x7f1000d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1311
    const v10, 0x7f1000d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1312
    const v11, 0x7f1000d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_122

    .line 1323
    const v12, 0x7f0900bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
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

    .line 1339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :cond_a9
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_130

    .line 1344
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1345
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1404
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

    .line 1405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v12, v12, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "N/A"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 1406
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1407
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1411
    :cond_ec
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42f

    .line 1416
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1421
    :goto_117
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_436

    .line 1422
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1426
    :goto_121
    return-void

    .line 1325
    :cond_122
    const v12, 0x7f0900ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_89

    .line 1347
    :cond_130
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Z)Ljava/lang/String;

    move-result-object v12

    .line 1353
    if-eqz v12, :cond_150

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_150

    .line 1354
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1355
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b8

    .line 1358
    :cond_150
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1359
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1361
    const v12, 0x7f0900b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1362
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

    .line 1363
    :cond_180
    const v12, 0x7f0900b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1370
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

    .line 1371
    new-instance v13, Ljava/text/DecimalFormat;

    const-string/jumbo v14, "###,###,###.##"

    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v14}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1374
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

    .line 1375
    const-string/jumbo v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f6

    .line 1376
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v15, 0x7f0900df

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1379
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

    .line 1380
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

    .line 1365
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

    .line 1366
    const v12, 0x7f0900b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_189

    .line 1382
    :cond_25a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v15, v15, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v15, v0, :cond_2ab

    .line 1383
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0900cb

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

    .line 1385
    :cond_2ab
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

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

    const v16, 0x7f0900ce

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1386
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

    .line 1390
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

    .line 1391
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

    const v13, 0x7f0900df

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

    .line 1393
    :cond_38d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v12, v12, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    const/16 v13, 0x3c

    if-ne v12, v13, :cond_3c0

    .line 1394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0900cb

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

    .line 1396
    :cond_3c0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0900cc

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

    const v13, 0x7f0900cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1397
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

    .line 1418
    :cond_42f
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_117

    .line 1424
    :cond_436
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_121
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z
    .registers 2

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    return p1
.end method

.method private b(Z)Ljava/lang/String;
    .registers 10

    .prologue
    const v5, 0x7f090245

    const v1, 0x7f090244

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x6

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v3, :cond_50

    .line 1437
    :cond_13
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v0, v4, :cond_1f

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_d2

    .line 1438
    :cond_1f
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    if-ne v0, v3, :cond_bc

    .line 1440
    :try_start_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_92

    .line 1441
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 1442
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1444
    if-eqz v0, :cond_7c

    .line 1445
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1446
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_5e

    .line 1448
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4e} :catch_a8

    move-result-object v0

    .line 1580
    :goto_4f
    return-object v0

    .line 1432
    :cond_50
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1433
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1450
    :cond_5e
    const v0, 0x7f090243

    :try_start_61
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1453
    :cond_66
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_74

    .line 1455
    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1457
    :cond_74
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1461
    :cond_7c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_8a

    .line 1463
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1465
    :cond_8a
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1469
    :cond_92
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_a0

    .line 1471
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1473
    :cond_a0
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_a6} :catch_a8

    move-result-object v0

    goto :goto_4f

    .line 1476
    :catch_a8
    move-exception v0

    .line 1477
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_b7

    .line 1479
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1481
    :cond_b7
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1485
    :cond_bc
    if-ne p1, v3, :cond_d2

    .line 1486
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v0, v2, :cond_c9

    .line 1488
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 1490
    :cond_c9
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    .line 1496
    :cond_d2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e4

    .line 1497
    if-ne p1, v3, :cond_e4

    .line 1499
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    .line 1504
    :cond_e4
    if-nez p1, :cond_12c

    .line 1505
    :try_start_e6
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-nez v0, :cond_f6

    .line 1506
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f4} :catch_13e

    if-ne v0, v4, :cond_126

    .line 1526
    :cond_f6
    :goto_f6
    :try_start_f6
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11a

    .line 1527
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-wide v2, v1, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v4, 0x6270

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1528
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1542
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_117} :catch_18c

    move-result v0

    if-eqz v0, :cond_148

    .line 1555
    :cond_11a
    :goto_11a
    :try_start_11a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v0, :cond_19f

    .line 1556
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_124} :catch_196

    goto/16 :goto_4f

    .line 1509
    :cond_126
    :try_start_126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_4f

    .line 1513
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v0, v4, :cond_f6

    .line 1516
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13c} :catch_13e

    goto/16 :goto_4f

    .line 1519
    :catch_13e
    move-exception v0

    .line 1520
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f6

    .line 1545
    :cond_148
    const v0, 0x7f0900a8

    :try_start_14b
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1546
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

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1547
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
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_189} :catch_18c

    move-result-object v0

    goto/16 :goto_4f

    .line 1550
    :catch_18c
    move-exception v0

    .line 1551
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 1558
    :catch_196
    move-exception v0

    .line 1559
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.IsConditionPass == false)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_19f
    :try_start_19f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lez v0, :cond_1c1

    .line 1564
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v1, v1, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v0, v1, :cond_1c1

    .line 1565
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1b5} :catch_1b8

    move-result-object v0

    goto/16 :goto_4f

    .line 1568
    :catch_1b8
    move-exception v0

    .line 1569
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_1c1
    :try_start_1c1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v0, v0, Lcom/bzbs/bean/Campaign;->ItemCountSold:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget v1, v1, Lcom/bzbs/bean/Campaign;->Quantity:I

    if-lt v0, v1, :cond_1dd

    .line 1574
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1d1} :catch_1d4

    move-result-object v0

    goto/16 :goto_4f

    .line 1576
    :catch_1d4
    move-exception v0

    .line 1577
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_1dd
    const-string/jumbo v0, ""

    goto/16 :goto_4f
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 658
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    return v0
.end method

.method private c(Z)V
    .registers 4

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2566
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/facebook/CallbackManager;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/util/ArrayList;
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
    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_history"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 494
    if-eqz v0, :cond_10

    .line 500
    :goto_f
    return-object v0

    .line 497
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_f

    .line 499
    :catch_16
    move-exception v0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 4

    .prologue
    const v2, 0x7f090364

    .line 647
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090365

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900d0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dd

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-void
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private k()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 669
    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    .line 670
    const-string/jumbo v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    .line 674
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    if-lez v0, :cond_3e

    .line 675
    const-string/jumbo v0, "campaign"

    const-string/jumbo v1, "view"

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    :goto_3d
    return-void

    .line 677
    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 678
    const-string/jumbo v0, "campaign"

    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3d
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    return-object v0
.end method

.method private l()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 683
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 684
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 686
    const v1, 0x7f1000c2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 687
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 689
    const v1, 0x7f1000d9

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 690
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    const v1, 0x7f1000dc

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 693
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    const v1, 0x7f1000e3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    .line 701
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 702
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/LinearLayoutManager;

    .line 703
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 705
    const v1, 0x7f100103

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 706
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 707
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 708
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 710
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    .line 723
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    .line 722
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 756
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 757
    const v1, 0x7f1000f7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 758
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 773
    const v1, 0x7f1000ff

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 774
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 789
    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 790
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    if-lez v0, :cond_f2

    .line 805
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_ec

    .line 806
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e:Z

    .line 807
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    .line 819
    :cond_eb
    :goto_eb
    return-void

    .line 809
    :cond_ec
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-direct {p0, v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_eb

    .line 812
    :cond_f2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    .line 813
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_eb

    .line 816
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_eb
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private m()V
    .registers 5

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_73

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 825
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

    .line 826
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

    .line 827
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 828
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 829
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 830
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 831
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 832
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 833
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 862
    :cond_73
    return-void
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    return-object v0
.end method

.method private n()V
    .registers 8

    .prologue
    const v6, 0x7f090286

    .line 984
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 985
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v2

    .line 987
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 990
    if-eqz v4, :cond_a5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 991
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6f

    .line 993
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

    .line 1001
    :goto_6e
    return-void

    .line 996
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

    const v2, 0x7f090287

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

    .line 999
    :cond_a5
    const v1, 0x7f09028c

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:I

    return v0
.end method

.method private o()V
    .registers 11

    .prologue
    const v9, 0x7f1000e3

    const/4 v8, 0x4

    const/4 v7, 0x0

    const v6, 0x7f1000e2

    const-wide/16 v2, 0x1388

    .line 1584
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    .line 1586
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_98

    .line 1587
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1595
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1596
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 1597
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1598
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->c()V

    .line 1620
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1638
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1672
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    if-nez v0, :cond_76

    .line 1673
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    .line 1674
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1679
    :cond_76
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1680
    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1681
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "pagerImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1684
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1685
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "rvImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :cond_98
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_105

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_105

    .line 1689
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e3

    .line 1690
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 1691
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1693
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 1707
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    if-nez v0, :cond_e3

    .line 1708
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    .line 1709
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1710
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1714
    :cond_e3
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1715
    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1716
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "pagerImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1719
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1720
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "rvImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :cond_105
    return-void
.end method

.method static synthetic p(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private p()V
    .registers 9

    .prologue
    const v7, 0x7f1000df

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 1922
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    .line 1924
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1925
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1927
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_75

    .line 1928
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_75

    move v1, v2

    .line 1929
    :goto_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 1930
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1931
    const v3, 0x7f040024

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1933
    const v0, 0x7f100108

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1934
    if-nez v1, :cond_5d

    .line 1935
    const v4, 0x7f0202a9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1938
    :cond_5d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1929
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 1941
    :cond_66
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_85

    .line 1942
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1954
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_95

    .line 1955
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1959
    :goto_84
    return-void

    .line 1944
    :cond_85
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h:I

    if-ne v0, v6, :cond_8f

    .line 1945
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_75

    .line 1947
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_75

    .line 1957
    :cond_95
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_84
.end method

.method static synthetic q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private q()V
    .registers 7

    .prologue
    const v5, 0x7f100100

    const/16 v4, 0x8

    .line 1969
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1970
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1973
    :cond_1b
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1975
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

    .line 1976
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1978
    :try_start_4f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1980
    const/4 v0, 0x0

    move v1, v0

    :goto_5a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 1981
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

    .line 1982
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1987
    :cond_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 1988
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 1989
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1999
    :goto_8b
    return-void

    .line 1980
    :cond_8c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5a

    .line 1991
    :cond_90
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_9c} :catch_9d

    goto :goto_8b

    .line 1993
    :catch_9d
    move-exception v0

    .line 1994
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b

    .line 1997
    :cond_a6
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b
.end method

.method static synthetic r(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    return v0
.end method


# virtual methods
.method public a_()V
    .registers 5

    .prologue
    .line 524
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    return-void
.end method

.method public b_()V
    .registers 1

    .prologue
    .line 548
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2180
    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 2181
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2182
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2183
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2186
    :cond_22
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i()Ljava/util/ArrayList;

    move-result-object v1

    .line 2187
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 2188
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2190
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2192
    const-string/jumbo v0, "campaign_history"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2193
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2196
    :cond_5d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->finish()V

    .line 2197
    return-void
.end method

.method public doConfirmCondition(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2489
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2490
    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2491
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:J

    sub-long/2addr v2, v4

    .line 2492
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2530
    :goto_1a
    return-void

    .line 2496
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->E:J

    .line 2498
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2500
    const v0, 0x7f040104

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2502
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2504
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 2505
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    :goto_50
    const v0, 0x7f10056f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2511
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2518
    const v0, 0x7f100571

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2519
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2525
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2526
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2527
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2529
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1a

    .line 2507
    :cond_89
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50
.end method

.method public doLike(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2235
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2236
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2237
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2251
    :goto_19
    return-void

    .line 2241
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2242
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2244
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    if-eqz v0, :cond_42

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2246
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    goto :goto_19

    .line 2248
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "like"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2533
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2534
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2535
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2551
    :goto_19
    return-void

    .line 2539
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2540
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2542
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2543
    if-eqz v0, :cond_6b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2544
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()V

    .line 2546
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

    .line 2548
    :cond_6b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "redeem"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doReview(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2201
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2202
    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2203
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:J

    sub-long/2addr v2, v4

    .line 2204
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2232
    :goto_1a
    return-void

    .line 2208
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->D:J

    .line 2222
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2223
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 2225
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    if-eqz v0, :cond_4f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2227
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-static {p0, v0, v1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    goto :goto_1a

    .line 2229
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "BZB Campaign Review"

    const-string/jumbo v3, "review"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doShare(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2390
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2391
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2392
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2485
    :cond_19
    :goto_19
    return-void

    .line 2396
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2397
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2399
    :cond_2b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_19

    .line 2400
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 2402
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2403
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 2404
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 2405
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    const-string/jumbo v2, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    .line 2406
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 2407
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 2409
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 2479
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 2482
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

.method public f()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2254
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2255
    if-eqz v0, :cond_da

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 2256
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2257
    const v1, 0x7f1000e5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2258
    const v2, 0x7f1000e7

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2259
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v3, v3, Lcom/bzbs/bean/Campaign;->IsLike:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_db

    .line 2262
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

    .line 2263
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

    .line 2264
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2265
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2266
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2267
    invoke-virtual {v4, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2268
    invoke-virtual {v4, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    .line 2269
    invoke-virtual {v4, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 2270
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2271
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2272
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 2273
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2385
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

    .line 2387
    :cond_da
    return-void

    .line 2317
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

    .line 2318
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

    .line 2320
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2323
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2324
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2325
    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2326
    invoke-virtual {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2327
    invoke-virtual {v5, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    .line 2328
    invoke-virtual {v5, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2329
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 2330
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2331
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 2332
    invoke-virtual {v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2382
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_b1
.end method

.method public g()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2571
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v0, :cond_1b

    .line 2572
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    .line 2722
    :goto_1a
    return-void

    .line 2581
    :cond_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2582
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2583
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-virtual {v2}, Lcom/bzbs/bean/Campaign;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2584
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 2589
    :cond_45
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->Delivered:Z

    if-ne v0, v2, :cond_9b

    .line 2591
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 2592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    const v1, 0x7f09014e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090133

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090366

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090357

    .line 2601
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2606
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2607
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1a

    .line 2612
    :cond_9b
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    if-ne v0, v2, :cond_a9

    .line 2613
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "if (doRedeeming == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2615
    :cond_a9
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2616
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    .line 2617
    invoke-direct {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 2619
    if-eqz v0, :cond_c8

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 2620
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2622
    :cond_c8
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 2624
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2625
    const-string/jumbo v0, "No internet connection!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Ljava/lang/String;)V

    .line 2626
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2627
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2629
    :cond_e6
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2631
    if-eqz v0, :cond_397

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_397

    .line 2633
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v1, :cond_11e

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11e

    .line 2634
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-static {p0, v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V

    .line 2635
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2636
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2637
    :cond_11e
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 2638
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 2639
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2646
    :goto_15f
    :try_start_15f
    const-string/jumbo v1, "{campaign_id}"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_174} :catch_1bc

    move-result-object v0

    .line 2651
    :goto_175
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2652
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2653
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->s:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2655
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2656
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a

    .line 2642
    :cond_194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15f

    .line 2647
    :catch_1bc
    move-exception v1

    .line 2648
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

    goto :goto_175

    .line 2658
    :cond_1db
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:Z

    .line 2660
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2661
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2666
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

    .line 2668
    new-instance v3, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2670
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

    .line 2672
    const-string/jumbo v0, "carrier"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2673
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

    .line 2675
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    if-eqz v0, :cond_2de

    .line 2676
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v0, :cond_30b

    .line 2677
    const-string/jumbo v0, "nfc"

    const-string/jumbo v1, "write_back"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2678
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "nfc=write_back"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    :goto_26b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-boolean v0, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v0, :cond_31e

    .line 2684
    const-string/jumbo v0, "redeem_media"

    const-string/jumbo v1, "nfc_write_back"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2685
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem_media=nfc_write_back"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    :goto_282
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    if-eqz v0, :cond_2de

    .line 2691
    const-string/jumbo v0, "location_id"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2692
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

    .line 2694
    const-string/jumbo v0, "info1"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v1, v1, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2695
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

    .line 2699
    :cond_2de
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_331

    .line 2701
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

    .line 2702
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2680
    :cond_30b
    const-string/jumbo v0, "nfc"

    const-string/jumbo v1, "read"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2681
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "nfc=read"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26b

    .line 2687
    :cond_31e
    const-string/jumbo v0, "redeem_media"

    const-string/jumbo v1, "nfc"

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2688
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem_media=nfc"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_282

    .line 2703
    :cond_331
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    .line 2704
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_363

    .line 2705
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2707
    :cond_363
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2709
    :cond_36f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 2710
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2712
    :cond_390
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2716
    :cond_397
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    .line 2717
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->F:Z

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Z)V

    goto/16 :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 235
    if-ne p2, v1, :cond_13

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r:I

    if-ne p1, v0, :cond_13

    .line 289
    :cond_12
    :goto_12
    return-void

    .line 248
    :cond_13
    if-ne p2, v1, :cond_31

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->s:I

    if-ne p1, v0, :cond_31

    .line 249
    const-string/jumbo v0, "bzbs_return_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 251
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->G:Z

    .line 252
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 254
    :cond_31
    if-ne p2, v1, :cond_37

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->t:I

    if-eq p1, v0, :cond_12

    .line 256
    :cond_37
    if-ne p2, v1, :cond_50

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->u:I

    if-ne p1, v0, :cond_50

    .line 257
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m()V

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v4, v2, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 259
    :cond_50
    if-ne p2, v1, :cond_71

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->v:I

    if-ne p1, v0, :cond_71

    .line 260
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 262
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 264
    :cond_71
    if-ne p2, v1, :cond_90

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->w:I

    if-ne p1, v0, :cond_90

    .line 265
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 267
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 269
    :cond_90
    if-ne p2, v1, :cond_ad

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->x:I

    if-ne p1, v0, :cond_ad

    .line 270
    const-string/jumbo v0, "json_redeem"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_12

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 272
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 274
    :cond_ad
    if-ne p2, v1, :cond_12

    goto/16 :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 161
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_116

    .line 167
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 169
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setContentView(I)V

    .line 170
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setTheme(I)V

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    .line 174
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->y:Lcom/facebook/CallbackManager;

    .line 177
    :try_start_37
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Lcom/bzbs/event/NetworkStateReceiver;

    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_113

    .line 188
    :goto_50
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k()V

    .line 189
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_79

    .line 198
    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    :cond_79
    const-string/jumbo v0, "Gift Campaign Details"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 204
    :try_start_7f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    const/4 v1, 0x1

    if-ne v0, v1, :cond_da

    .line 206
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 207
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_noti_alert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 209
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

    .line 228
    :cond_da
    :goto_da
    return-void

    .line 210
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

    .line 211
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

    .line 214
    :catch_111
    move-exception v0

    goto :goto_da

    .line 180
    :catch_113
    move-exception v0

    goto/16 :goto_50

    .line 163
    :catch_116
    move-exception v0

    goto/16 :goto_17
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 443
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->i:Landroid/support/v4/view/ViewPager;

    .line 444
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j:Landroid/widget/LinearLayout;

    .line 445
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 446
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 448
    :cond_11
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k:Ljava/util/Timer;

    .line 450
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l:Landroid/support/v7/widget/RecyclerView;

    .line 451
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m:Landroid/support/v7/widget/LinearLayoutManager;

    .line 452
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 454
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 455
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 456
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 457
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 461
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 473
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 475
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
    .line 427
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 431
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->A:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_c

    .line 436
    :goto_8
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 437
    return-void

    .line 432
    :catch_c
    move-exception v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 387
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 390
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 392
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n()V

    .line 393
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "1.getCampaign(resume|gLastTokenBzBs)"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b:I

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d:Lcom/bzbs/bean/NFCTag;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_43

    .line 402
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v4}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 404
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void

    .line 396
    :catch_43
    move-exception v0

    goto :goto_31
.end method
