.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonCampaign(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$textDescription:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;->val$textDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v2, 0x7f1000fa

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1152
    .local v0, "layoutDescriptionSeeMore":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;->val$textDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_19

    .line 1153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1157
    :goto_18
    return-void

    .line 1155
    :cond_19
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_18
.end method
