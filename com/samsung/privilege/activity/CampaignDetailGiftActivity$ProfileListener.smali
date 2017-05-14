.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/ProfileEvents$ProfileListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V
    .registers 3

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 672
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 676
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ProfileListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method
