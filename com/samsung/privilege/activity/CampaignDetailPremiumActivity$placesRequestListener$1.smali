.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    .line 2428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;
    .registers 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2437
    return-void
.end method
