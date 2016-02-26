.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileAddressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 2819
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)V
    .registers 3

    .prologue
    .line 2819
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2823
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(GetProfileDataListener|onComplete)response_code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response_text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2850
    return-void
.end method
