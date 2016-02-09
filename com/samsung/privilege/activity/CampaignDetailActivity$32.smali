.class Lcom/samsung/privilege/activity/CampaignDetailActivity$32;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 3564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$29(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3567
    return-void
.end method
